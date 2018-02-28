#include <iostream>
#include <type_traits>
#include <typeinfo>

namespace detail {

  template <int R, int C> 
  struct Position
  {
    constexpr static int ROW = R;
    constexpr static int COL = C;
  };

  template <typename... Pos> struct all_positions {};

  template <typename A, typename L>
  struct Append;

  template <typename F, typename... Rest>
  struct Append<F, all_positions<Rest...>>
  {
    using type = all_positions<F, Rest...>;
  };

  template <typename List, int Idx, typename NPos>
  struct UpdateImpl;

  template <typename... Rest, int R, int C, int Idx, typename NPos>
  struct UpdateImpl<all_positions<Position<R, C>, Rest...>, Idx, NPos>
  {
    using result_t = typename UpdateImpl<all_positions<Rest...>, Idx - 1, NPos>::type;
    using type = typename Append<Position<R, C>, result_t>::type;
  };

  template <typename... Rest, int R, int C, typename NPos>
  struct UpdateImpl<all_positions<Position<R, C>, Rest...>, 0, NPos>
  {
    using type = all_positions<NPos, Rest...>;
  };

  template <typename L, int Idx, int Count> struct AtImpl;

  template <typename F, typename... Rest, int Idx, int Count>
  struct AtImpl<all_positions<F, Rest...>, Idx, Count>
  {
    using type = typename AtImpl<all_positions<Rest...>, Idx, Count+1>::type;
  };

  template <typename F, typename... Rest, int V>
  struct AtImpl<all_positions<F, Rest...>, V, V>
  {
    using type = F;
  };

  template <typename L> struct Length;

  template <typename F, typename... Rest>
  struct Length<all_positions<F, Rest...>>
  {
    constexpr static int value = 1 + Length<all_positions<Rest...>>::value;
  };

  template <>
  struct Length<all_positions<>>
  {
    constexpr static int value = 0;
  };
}

template <typename List, int Idx, typename NPos>
using Update = typename detail::UpdateImpl<List, Idx, NPos>::type;

template <typename List, int Idx>
using At = typename detail::AtImpl<List, Idx, 0>;

template <typename L>
using BoardSize = detail::Length<L>;

// Represent Empty position in
// the chessboard matrix.
template <int R, int C>
using Nil = detail::Position<R, C>;

// Represents the position of Queen
// in the chessboard matrix.
template <int R, int C>
using Queen = detail::Position<R, C>;

using init_pos = detail::all_positions<Queen<0, 0>, 
                                       Queen<1, 0>, 
                                       Queen<2, -1>, 
                                       Queen<3, -1>,
                                       Queen<4, -1>,
                                       Queen<5, -1>,
                                       Queen<6, -1>,
                                       Queen<7, -1>
                                      >;

template <int V>                                      
using int_c = std::integral_constant<int, V>;


template <typename Board, int F, int S>
constexpr bool does_conflict(int_c<F>, int_c<S>)
{
  using res_a = typename At<Board, F>::type;
  using res_b = typename At<Board, S>::type;

  // Special condition for the initial position.
  if (res_a::COL == -1 || res_b::COL == -1) return false;

  constexpr auto offset = res_b::ROW - res_a::ROW;

  if (res_a::COL == res_b::COL) return true;

  if (res_a::COL + offset < BoardSize<Board>::value) {
    if (res_b::COL == res_a::COL + offset) return true;
  }

  if (res_a::COL - offset >= 0) {
    if (res_b::COL == (res_a::COL - offset)) return true;
  }

  return false;
}

template <typename Board, int Idx>
constexpr bool has_conflicts(int_c<Idx>, int_c<BoardSize<Board>::value - 1>)
{
    return does_conflict<Board>(int_c<Idx>{}, int_c<BoardSize<Board>::value - 1>{});
}

template <typename Board, int Idx1, int Idx2,
          typename = typename std::enable_if<Idx2 < BoardSize<Board>::value - 1>::type>
constexpr bool has_conflicts(int_c<Idx1>, int_c<Idx2>)
{
  return has_conflicts<Board>(int_c<Idx1>{}, int_c<Idx2 + 1>{}) ||
         does_conflict<Board>(int_c<Idx1>{}, int_c<Idx2>{});
}

template <typename Board>
constexpr bool has_conflicts(int_c<BoardSize<Board>::value - 1>)
{
  return false;
}

template <typename Board, int FIdx,
          typename = typename std::enable_if_t<FIdx < BoardSize<Board>::value - 1>>
constexpr bool has_conflicts(int_c<FIdx>)
{
  return has_conflicts<Board>(int_c<FIdx>{}, int_c<FIdx+1>{}) ||
         has_conflicts<Board>(int_c<FIdx+1>{});
}

/*
template <typename Board, int Idx>
constexpr void solve(int_c<Idx>)
{
  if (has_conflicts<Board>(int_c<0>{})) {
    using curr = typename At<Board, Idx>::type;
    using new_pos = Queen<curr::ROW, curr::COL + 1>;
    solve<Update<Board, Idx, new_pos>>(int_c<Idx>{});
  } else {
    if (Idx == BoardSize<Board>::value - 1) {
      return;
    }
    solve<Board>(int_c<Idx + 1>{});
  }
  return;
}
*/

constexpr static const size_t icount = 0;

template <typename Board, int Idx, bool C, bool Recurse, size_t cnt> struct Solve;

template <typename Board, int Idx, bool R, size_t Cnt>
struct Solve<Board, Idx, true, R, Cnt> // Has Conflict, Recurse
{
private:
  using curr = typename At<Board, Idx>::type;
  using prev_Idx = std::conditional_t<
                    curr::ROW != 0,
                    int_c<Idx - 1>,
                    int_c<Idx>
                   >;
  using prev_row = typename At<Board, prev_Idx::value>::type;

  using new_pos = std::conditional_t<
                    (curr::COL + 1) < BoardSize<Board>::value,
                    Queen<curr::ROW, curr::COL + 1>,
                    prev_row
                  >;
  using Idx_c = std::conditional_t<
                  new_pos::ROW == curr::ROW,
                  int_c<Idx>,
                  int_c<Idx - 1>
                >;

public:
  using new_board = Update<Board, Idx_c::value, new_pos>;
  using updated_board = std::conditional_t<
                          new_pos::ROW == curr::ROW,
                          new_board,
                          Update<new_board, Idx, Queen<curr::ROW, -1>>
                        >;

  constexpr static const bool conflict = (new_pos::ROW == curr::ROW)
                                       ? has_conflicts<updated_board>(int_c<0>{})
                                       : true
                                       ;

  using next = typename Solve<updated_board, 
                              Idx_c::value, 
                              conflict,
                              !(Idx_c::value == BoardSize<updated_board>::value - 1),
                              Cnt + 1
                             >::next;
};

template <typename Board, int Idx, size_t Cnt>
struct Solve<Board, Idx, false, true, Cnt> // No conflicts whatsoever, Recurse
{
private:
  using curr = typename At<Board, Idx + 1>::type;
  using new_pos = Queen<curr::ROW, curr::COL + 1>;
public:
  using new_board = Update<Board, Idx + 1, new_pos>;

  using next = typename Solve<new_board,
                              Idx + 1,
                              has_conflicts<new_board>(int_c<0>{}),
                              !(Idx == BoardSize<new_board>::value-1),
                              Cnt + 1
                             >::next;
};

template <typename Board, int Idx, size_t Cnt>
struct Solve<Board, Idx, false, false, Cnt>  // Stop the recursion
{
  using next = Board;
};

int main() {
  //std::cout << typeid(Update<init_pos, 2, Queen<1,1>>).name() << std::endl;
  //std::cout << BoardSize<init_pos>::value << std::endl;

  //static_assert(does_conflict<init_pos>(int_c<1>{}, int_c<2>{}) == false, "There is conflict");
  //static_assert(has_conflicts<init_pos>(int_c<0>{}) == false, "Board has conflict");

  using ans = typename Solve<init_pos, 1, has_conflicts<init_pos>(int_c<0>{}), true, icount>::next;

  std::cout << typeid(ans).name() << std::endl;

  return 0;
}
