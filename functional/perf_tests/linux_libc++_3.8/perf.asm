 2.86 │2e:┌─→mov    0x8(%rbx),%rax                                                                                                                ▒
       │   │  lea    0x1(%rax),%rcx                                                                                                                ▒
       │   │  mov    %rcx,0x8(%rbx)                                                                                                                ▒
  7.14 │   │  cmp    0x48(%rbx),%rax                                                                                                               ▒
  1.43 │   │↓ jae    96                                                                                                                            ▒
  5.71 │   │  mov    $0x28,%edi                                                                                                                    ▒
       │   │→ callq  operator new(unsigned long)@plt                                                                                               ▒
  7.14 │   │  movq   $0x478760,(%rax)                                                                                                              ▒
       │   │  mov    %rax,0x20(%rsp)                                                                                                               ▒
  5.71 │   │  xorps  %xmm0,%xmm0                                                                                                                   ▒
  4.29 │   │  movups %xmm0,0x14(%rax)                                                                                                              ▒
  1.43 │   │  movl   $0x0,0x24(%rax)                                                                                                               ▒
       │   │  mov    %r15,0x8(%rax)                                                                                                                ▒
  1.43 │   │  movl   $0x676e6972,0x10(%rax)                                                                                                        ▒
  4.29 │   │  mov    0x20(%rsp),%rdi                                                                                                               ▒
  4.29 │   │  cmp    %r14,%rdi                                                                                                                     ▒
       │   │↓ je     80                                                                                                                            ▒
  7.14 │   │  test   %rdi,%rdi                                                                                                                     ▒
       │   │↑ jne    20                                                                                                                            ▒
       │   │↑ jmp    26                                                                                                                            ▒
       │80:│  mov    (%rsp),%rax                                                                                                                   ▒
       │   │  mov    %r14,%rdi                                                                                                                     ▒
       │   │→ callq  *0x20(%rax)                                                                                                                   ▒
       │   │↑ jmp    26                                                                                                                            ◆
       │8c:│  mov    %rbx,%rdi                                                                                                                     ▒
       │   │→ callq  benchmark::State::StartKeepRunning()                                                                                          ▒
       │   └──jmp    2e                                     
