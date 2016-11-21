#include <utility>

struct root
{
    template <typename TNode, typename... TNodes>
    void start(TNode&& n, TNodes&&... ns)
    {
      std::forward<TNode>(n).execute(std::forward<TNodes>(ns)...);
    }
};

template <typename TParent>
struct node_then
{
    using this_type = node_then<TParent>;

    TParent _p;

    node_then(TParent&& p) : _p{std::move(p)}
    {
    }

    auto execute()
    {
    }

    template <typename TNode, typename... TNodes>
    auto execute(TNode&& n, TNodes&&... ns)
    {
      std::forward<TNode>(n).execute(std::forward<TNodes>(ns)...);
    }

    auto then() &&
    {
        return node_then<this_type>{std::move(*this)};
    }

    auto wait_all() &&;

    template <typename... TNodes>
    auto start(TNodes&&... ns)
    {
        _p.start(*this, std::forward<TNodes>(ns)...);
    }
};

template <typename TParent>
struct node_wait_all
{
    using this_type = node_wait_all<TParent>;

    TParent _p;

    node_wait_all(TParent&& p) : _p{std::move(p)}
    {
    }

    template <typename TNode, typename... TNodes>
    auto execute(TNode& n, TNodes&... ns)
    {
        ([&] { ([&] { n.execute(ns...); })(); })();
        //[&](){n.execute(ns...);}();
    }

    auto then() &&
    {
        return node_then<this_type>(std::forward<this_type>(*this));
    }

    template <typename... TNodes>
    auto start(TNodes&&... ns)
    {
        _p.start(*this, std::forward<TNodes>(ns)...);
    }
};

template <typename TParent>
auto node_then<TParent>::wait_all() &&
{
    return node_wait_all<this_type>(*this);
}

int main()
{
    node_then<root>(root{}).wait_all().then().then().start();
}

