
list:     file format elf64-x86-64


Disassembly of section .init:

00000000004004a0 <_init>:
  4004a0:	48 83 ec 08          	sub    $0x8,%rsp
  4004a4:	48 8b 05 45 0b 20 00 	mov    0x200b45(%rip),%rax        # 600ff0 <__gmon_start__>
  4004ab:	48 85 c0             	test   %rax,%rax
  4004ae:	74 05                	je     4004b5 <_init+0x15>
  4004b0:	e8 3b 00 00 00       	callq  4004f0 <__gmon_start__@plt>
  4004b5:	48 83 c4 08          	add    $0x8,%rsp
  4004b9:	c3                   	retq   

Disassembly of section .plt:

00000000004004c0 <.plt>:
  4004c0:	ff 35 42 0b 20 00    	pushq  0x200b42(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4004c6:	ff 25 44 0b 20 00    	jmpq   *0x200b44(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4004cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004d0 <printf@plt>:
  4004d0:	ff 25 42 0b 20 00    	jmpq   *0x200b42(%rip)        # 601018 <printf@GLIBC_2.2.5>
  4004d6:	68 00 00 00 00       	pushq  $0x0
  4004db:	e9 e0 ff ff ff       	jmpq   4004c0 <.plt>

00000000004004e0 <__libc_start_main@plt>:
  4004e0:	ff 25 3a 0b 20 00    	jmpq   *0x200b3a(%rip)        # 601020 <__libc_start_main@GLIBC_2.2.5>
  4004e6:	68 01 00 00 00       	pushq  $0x1
  4004eb:	e9 d0 ff ff ff       	jmpq   4004c0 <.plt>

00000000004004f0 <__gmon_start__@plt>:
  4004f0:	ff 25 32 0b 20 00    	jmpq   *0x200b32(%rip)        # 601028 <__gmon_start__>
  4004f6:	68 02 00 00 00       	pushq  $0x2
  4004fb:	e9 c0 ff ff ff       	jmpq   4004c0 <.plt>

Disassembly of section .text:

0000000000400500 <_start>:
  400500:	31 ed                	xor    %ebp,%ebp
  400502:	49 89 d1             	mov    %rdx,%r9
  400505:	5e                   	pop    %rsi
  400506:	48 89 e2             	mov    %rsp,%rdx
  400509:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40050d:	50                   	push   %rax
  40050e:	54                   	push   %rsp
  40050f:	49 c7 c0 a0 06 40 00 	mov    $0x4006a0,%r8
  400516:	48 c7 c1 30 06 40 00 	mov    $0x400630,%rcx
  40051d:	48 c7 c7 d2 05 40 00 	mov    $0x4005d2,%rdi
  400524:	e8 b7 ff ff ff       	callq  4004e0 <__libc_start_main@plt>
  400529:	f4                   	hlt    
  40052a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400530 <deregister_tm_clones>:
  400530:	48 8d 3d 61 0b 20 00 	lea    0x200b61(%rip),%rdi        # 601098 <__TMC_END__>
  400537:	48 8d 05 5a 0b 20 00 	lea    0x200b5a(%rip),%rax        # 601098 <__TMC_END__>
  40053e:	48 39 f8             	cmp    %rdi,%rax
  400541:	74 15                	je     400558 <deregister_tm_clones+0x28>
  400543:	48 8b 05 9e 0a 20 00 	mov    0x200a9e(%rip),%rax        # 600fe8 <_ITM_deregisterTMCloneTable>
  40054a:	48 85 c0             	test   %rax,%rax
  40054d:	74 09                	je     400558 <deregister_tm_clones+0x28>
  40054f:	ff e0                	jmpq   *%rax
  400551:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400558:	c3                   	retq   
  400559:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400560 <register_tm_clones>:
  400560:	48 8d 3d 31 0b 20 00 	lea    0x200b31(%rip),%rdi        # 601098 <__TMC_END__>
  400567:	48 8d 35 2a 0b 20 00 	lea    0x200b2a(%rip),%rsi        # 601098 <__TMC_END__>
  40056e:	48 29 fe             	sub    %rdi,%rsi
  400571:	48 89 f0             	mov    %rsi,%rax
  400574:	48 c1 ee 3f          	shr    $0x3f,%rsi
  400578:	48 c1 f8 03          	sar    $0x3,%rax
  40057c:	48 01 c6             	add    %rax,%rsi
  40057f:	48 d1 fe             	sar    %rsi
  400582:	74 14                	je     400598 <register_tm_clones+0x38>
  400584:	48 8b 05 6d 0a 20 00 	mov    0x200a6d(%rip),%rax        # 600ff8 <_ITM_registerTMCloneTable>
  40058b:	48 85 c0             	test   %rax,%rax
  40058e:	74 08                	je     400598 <register_tm_clones+0x38>
  400590:	ff e0                	jmpq   *%rax
  400592:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400598:	c3                   	retq   
  400599:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004005a0 <__do_global_dtors_aux>:
  4005a0:	80 3d f1 0a 20 00 00 	cmpb   $0x0,0x200af1(%rip)        # 601098 <__TMC_END__>
  4005a7:	75 17                	jne    4005c0 <__do_global_dtors_aux+0x20>
  4005a9:	55                   	push   %rbp
  4005aa:	48 89 e5             	mov    %rsp,%rbp
  4005ad:	e8 7e ff ff ff       	callq  400530 <deregister_tm_clones>
  4005b2:	c6 05 df 0a 20 00 01 	movb   $0x1,0x200adf(%rip)        # 601098 <__TMC_END__>
  4005b9:	5d                   	pop    %rbp
  4005ba:	c3                   	retq   
  4005bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4005c0:	c3                   	retq   
  4005c1:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4005c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005cd:	00 00 00 

00000000004005d0 <frame_dummy>:
  4005d0:	eb 8e                	jmp    400560 <register_tm_clones>

00000000004005d2 <main>:
  4005d2:	55                   	push   %rbp
  4005d3:	48 89 e5             	mov    %rsp,%rbp
  4005d6:	bf 80 10 60 00       	mov    $0x601080,%edi
  4005db:	e8 18 00 00 00       	callq  4005f8 <countNodes>
  4005e0:	89 c6                	mov    %eax,%esi
  4005e2:	bf b4 06 40 00       	mov    $0x4006b4,%edi
  4005e7:	b8 00 00 00 00       	mov    $0x0,%eax
  4005ec:	e8 df fe ff ff       	callq  4004d0 <printf@plt>
  4005f1:	b8 00 00 00 00       	mov    $0x0,%eax
  4005f6:	5d                   	pop    %rbp
  4005f7:	c3                   	retq   

00000000004005f8 <countNodes>:
  4005f8:	55                   	push   %rbp
  4005f9:	48 89 e5             	mov    %rsp,%rbp
  4005fc:	48 83 ec 10          	sub    $0x10,%rsp
  400600:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400604:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  400609:	75 07                	jne    400612 <countNodes+0x1a>
  40060b:	b8 00 00 00 00       	mov    $0x0,%eax
  400610:	eb 13                	jmp    400625 <countNodes+0x2d>
  400612:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400616:	48 8b 40 10          	mov    0x10(%rax),%rax
  40061a:	48 89 c7             	mov    %rax,%rdi
  40061d:	e8 d6 ff ff ff       	callq  4005f8 <countNodes>
  400622:	83 c0 01             	add    $0x1,%eax
  400625:	c9                   	leaveq 
  400626:	c3                   	retq   
  400627:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40062e:	00 00 

0000000000400630 <__libc_csu_init>:
  400630:	41 57                	push   %r15
  400632:	41 89 ff             	mov    %edi,%r15d
  400635:	41 56                	push   %r14
  400637:	49 89 f6             	mov    %rsi,%r14
  40063a:	41 55                	push   %r13
  40063c:	49 89 d5             	mov    %rdx,%r13
  40063f:	41 54                	push   %r12
  400641:	4c 8d 25 b0 07 20 00 	lea    0x2007b0(%rip),%r12        # 600df8 <__frame_dummy_init_array_entry>
  400648:	55                   	push   %rbp
  400649:	48 8d 2d b0 07 20 00 	lea    0x2007b0(%rip),%rbp        # 600e00 <__init_array_end>
  400650:	53                   	push   %rbx
  400651:	4c 29 e5             	sub    %r12,%rbp
  400654:	31 db                	xor    %ebx,%ebx
  400656:	48 c1 fd 03          	sar    $0x3,%rbp
  40065a:	48 83 ec 08          	sub    $0x8,%rsp
  40065e:	e8 3d fe ff ff       	callq  4004a0 <_init>
  400663:	48 85 ed             	test   %rbp,%rbp
  400666:	74 1e                	je     400686 <__libc_csu_init+0x56>
  400668:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40066f:	00 
  400670:	4c 89 ea             	mov    %r13,%rdx
  400673:	4c 89 f6             	mov    %r14,%rsi
  400676:	44 89 ff             	mov    %r15d,%edi
  400679:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40067d:	48 83 c3 01          	add    $0x1,%rbx
  400681:	48 39 eb             	cmp    %rbp,%rbx
  400684:	75 ea                	jne    400670 <__libc_csu_init+0x40>
  400686:	48 83 c4 08          	add    $0x8,%rsp
  40068a:	5b                   	pop    %rbx
  40068b:	5d                   	pop    %rbp
  40068c:	41 5c                	pop    %r12
  40068e:	41 5d                	pop    %r13
  400690:	41 5e                	pop    %r14
  400692:	41 5f                	pop    %r15
  400694:	c3                   	retq   
  400695:	90                   	nop
  400696:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40069d:	00 00 00 

00000000004006a0 <__libc_csu_fini>:
  4006a0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004006a4 <_fini>:
  4006a4:	48 83 ec 08          	sub    $0x8,%rsp
  4006a8:	48 83 c4 08          	add    $0x8,%rsp
  4006ac:	c3                   	retq   
