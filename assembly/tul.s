
tul:     file format elf64-x86-64


Disassembly of section .init:

00000000004005f0 <_init>:
  4005f0:	48 83 ec 08          	sub    $0x8,%rsp
  4005f4:	48 8b 05 f5 09 20 00 	mov    0x2009f5(%rip),%rax        # 600ff0 <__gmon_start__>
  4005fb:	48 85 c0             	test   %rax,%rax
  4005fe:	74 05                	je     400605 <_init+0x15>
  400600:	e8 5b 00 00 00       	callq  400660 <__gmon_start__@plt>
  400605:	48 83 c4 08          	add    $0x8,%rsp
  400609:	c3                   	retq   

Disassembly of section .plt:

0000000000400610 <.plt>:
  400610:	ff 35 f2 09 20 00    	pushq  0x2009f2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400616:	ff 25 f4 09 20 00    	jmpq   *0x2009f4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40061c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400620 <puts@plt>:
  400620:	ff 25 f2 09 20 00    	jmpq   *0x2009f2(%rip)        # 601018 <puts@GLIBC_2.2.5>
  400626:	68 00 00 00 00       	pushq  $0x0
  40062b:	e9 e0 ff ff ff       	jmpq   400610 <.plt>

0000000000400630 <printf@plt>:
  400630:	ff 25 ea 09 20 00    	jmpq   *0x2009ea(%rip)        # 601020 <printf@GLIBC_2.2.5>
  400636:	68 01 00 00 00       	pushq  $0x1
  40063b:	e9 d0 ff ff ff       	jmpq   400610 <.plt>

0000000000400640 <__libc_start_main@plt>:
  400640:	ff 25 e2 09 20 00    	jmpq   *0x2009e2(%rip)        # 601028 <__libc_start_main@GLIBC_2.2.5>
  400646:	68 02 00 00 00       	pushq  $0x2
  40064b:	e9 c0 ff ff ff       	jmpq   400610 <.plt>

0000000000400650 <fgets@plt>:
  400650:	ff 25 da 09 20 00    	jmpq   *0x2009da(%rip)        # 601030 <fgets@GLIBC_2.2.5>
  400656:	68 03 00 00 00       	pushq  $0x3
  40065b:	e9 b0 ff ff ff       	jmpq   400610 <.plt>

0000000000400660 <__gmon_start__@plt>:
  400660:	ff 25 d2 09 20 00    	jmpq   *0x2009d2(%rip)        # 601038 <__gmon_start__>
  400666:	68 04 00 00 00       	pushq  $0x4
  40066b:	e9 a0 ff ff ff       	jmpq   400610 <.plt>

0000000000400670 <__isoc99_sscanf@plt>:
  400670:	ff 25 ca 09 20 00    	jmpq   *0x2009ca(%rip)        # 601040 <__isoc99_sscanf@GLIBC_2.7>
  400676:	68 05 00 00 00       	pushq  $0x5
  40067b:	e9 90 ff ff ff       	jmpq   400610 <.plt>

0000000000400680 <exit@plt>:
  400680:	ff 25 c2 09 20 00    	jmpq   *0x2009c2(%rip)        # 601048 <exit@GLIBC_2.2.5>
  400686:	68 06 00 00 00       	pushq  $0x6
  40068b:	e9 80 ff ff ff       	jmpq   400610 <.plt>

Disassembly of section .text:

0000000000400690 <_start>:
  400690:	31 ed                	xor    %ebp,%ebp
  400692:	49 89 d1             	mov    %rdx,%r9
  400695:	5e                   	pop    %rsi
  400696:	48 89 e2             	mov    %rsp,%rdx
  400699:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40069d:	50                   	push   %rax
  40069e:	54                   	push   %rsp
  40069f:	49 c7 c0 f0 08 40 00 	mov    $0x4008f0,%r8
  4006a6:	48 c7 c1 80 08 40 00 	mov    $0x400880,%rcx
  4006ad:	48 c7 c7 ba 07 40 00 	mov    $0x4007ba,%rdi
  4006b4:	e8 87 ff ff ff       	callq  400640 <__libc_start_main@plt>
  4006b9:	f4                   	hlt    
  4006ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004006c0 <deregister_tm_clones>:
  4006c0:	48 8d 3d 99 09 20 00 	lea    0x200999(%rip),%rdi        # 601060 <stdin@@GLIBC_2.2.5>
  4006c7:	48 8d 05 92 09 20 00 	lea    0x200992(%rip),%rax        # 601060 <stdin@@GLIBC_2.2.5>
  4006ce:	48 39 f8             	cmp    %rdi,%rax
  4006d1:	74 15                	je     4006e8 <deregister_tm_clones+0x28>
  4006d3:	48 8b 05 0e 09 20 00 	mov    0x20090e(%rip),%rax        # 600fe8 <_ITM_deregisterTMCloneTable>
  4006da:	48 85 c0             	test   %rax,%rax
  4006dd:	74 09                	je     4006e8 <deregister_tm_clones+0x28>
  4006df:	ff e0                	jmpq   *%rax
  4006e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4006e8:	c3                   	retq   
  4006e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004006f0 <register_tm_clones>:
  4006f0:	48 8d 3d 69 09 20 00 	lea    0x200969(%rip),%rdi        # 601060 <stdin@@GLIBC_2.2.5>
  4006f7:	48 8d 35 62 09 20 00 	lea    0x200962(%rip),%rsi        # 601060 <stdin@@GLIBC_2.2.5>
  4006fe:	48 29 fe             	sub    %rdi,%rsi
  400701:	48 89 f0             	mov    %rsi,%rax
  400704:	48 c1 ee 3f          	shr    $0x3f,%rsi
  400708:	48 c1 f8 03          	sar    $0x3,%rax
  40070c:	48 01 c6             	add    %rax,%rsi
  40070f:	48 d1 fe             	sar    %rsi
  400712:	74 14                	je     400728 <register_tm_clones+0x38>
  400714:	48 8b 05 dd 08 20 00 	mov    0x2008dd(%rip),%rax        # 600ff8 <_ITM_registerTMCloneTable>
  40071b:	48 85 c0             	test   %rax,%rax
  40071e:	74 08                	je     400728 <register_tm_clones+0x38>
  400720:	ff e0                	jmpq   *%rax
  400722:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400728:	c3                   	retq   
  400729:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400730 <__do_global_dtors_aux>:
  400730:	80 3d 31 09 20 00 00 	cmpb   $0x0,0x200931(%rip)        # 601068 <completed.7307>
  400737:	75 17                	jne    400750 <__do_global_dtors_aux+0x20>
  400739:	55                   	push   %rbp
  40073a:	48 89 e5             	mov    %rsp,%rbp
  40073d:	e8 7e ff ff ff       	callq  4006c0 <deregister_tm_clones>
  400742:	c6 05 1f 09 20 00 01 	movb   $0x1,0x20091f(%rip)        # 601068 <completed.7307>
  400749:	5d                   	pop    %rbp
  40074a:	c3                   	retq   
  40074b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400750:	c3                   	retq   
  400751:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400756:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40075d:	00 00 00 

0000000000400760 <frame_dummy>:
  400760:	eb 8e                	jmp    4006f0 <register_tm_clones>

0000000000400762 <read_three_unsigned_longs>:
  400762:	55                   	push   %rbp
  400763:	48 89 e5             	mov    %rsp,%rbp
  400766:	48 83 ec 10          	sub    $0x10,%rsp
  40076a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40076e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  400772:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400776:	48 8d 70 10          	lea    0x10(%rax),%rsi
  40077a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40077e:	48 8d 48 08          	lea    0x8(%rax),%rcx
  400782:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  400786:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40078a:	49 89 f0             	mov    %rsi,%r8
  40078d:	be 04 09 40 00       	mov    $0x400904,%esi
  400792:	48 89 c7             	mov    %rax,%rdi
  400795:	b8 00 00 00 00       	mov    $0x0,%eax
  40079a:	e8 d1 fe ff ff       	callq  400670 <__isoc99_sscanf@plt>
  40079f:	90                   	nop
  4007a0:	c9                   	leaveq 
  4007a1:	c3                   	retq   

00000000004007a2 <explode_bomb>:
  4007a2:	55                   	push   %rbp
  4007a3:	48 89 e5             	mov    %rsp,%rbp
  4007a6:	bf 10 09 40 00       	mov    $0x400910,%edi
  4007ab:	e8 70 fe ff ff       	callq  400620 <puts@plt>
  4007b0:	bf 01 00 00 00       	mov    $0x1,%edi
  4007b5:	e8 c6 fe ff ff       	callq  400680 <exit@plt>

00000000004007ba <main>:
  4007ba:	55                   	push   %rbp
  4007bb:	48 89 e5             	mov    %rsp,%rbp
  4007be:	48 81 ec 20 04 00 00 	sub    $0x420,%rsp
  4007c5:	48 8b 15 94 08 20 00 	mov    0x200894(%rip),%rdx        # 601060 <stdin@@GLIBC_2.2.5>
  4007cc:	48 8d 85 00 fc ff ff 	lea    -0x400(%rbp),%rax
  4007d3:	be 00 04 00 00       	mov    $0x400,%esi
  4007d8:	48 89 c7             	mov    %rax,%rdi
  4007db:	e8 70 fe ff ff       	callq  400650 <fgets@plt>
  4007e0:	48 8d 95 e0 fb ff ff 	lea    -0x420(%rbp),%rdx
  4007e7:	48 8d 85 00 fc ff ff 	lea    -0x400(%rbp),%rax
  4007ee:	48 89 d6             	mov    %rdx,%rsi
  4007f1:	48 89 c7             	mov    %rax,%rdi
  4007f4:	e8 69 ff ff ff       	callq  400762 <read_three_unsigned_longs>
  4007f9:	48 8b 95 e0 fb ff ff 	mov    -0x420(%rbp),%rdx
  400800:	48 8b 85 e8 fb ff ff 	mov    -0x418(%rbp),%rax
  400807:	48 8d 34 02          	lea    (%rdx,%rax,1),%rsi
  40080b:	4c 8b 85 e8 fb ff ff 	mov    -0x418(%rbp),%r8
  400812:	48 8b bd e0 fb ff ff 	mov    -0x420(%rbp),%rdi
  400819:	48 8b 8d f0 fb ff ff 	mov    -0x410(%rbp),%rcx
  400820:	48 8b 95 e8 fb ff ff 	mov    -0x418(%rbp),%rdx
  400827:	48 8b 85 e0 fb ff ff 	mov    -0x420(%rbp),%rax
  40082e:	48 83 ec 08          	sub    $0x8,%rsp
  400832:	56                   	push   %rsi
  400833:	4d 89 c1             	mov    %r8,%r9
  400836:	49 89 f8             	mov    %rdi,%r8
  400839:	48 89 c6             	mov    %rax,%rsi
  40083c:	bf 30 09 40 00       	mov    $0x400930,%edi
  400841:	b8 00 00 00 00       	mov    $0x0,%eax
  400846:	e8 e5 fd ff ff       	callq  400630 <printf@plt>
  40084b:	48 83 c4 10          	add    $0x10,%rsp
  40084f:	48 8b 95 e0 fb ff ff 	mov    -0x420(%rbp),%rdx
  400856:	48 8b 85 e8 fb ff ff 	mov    -0x418(%rbp),%rax
  40085d:	48 01 c2             	add    %rax,%rdx
  400860:	48 8b 85 f0 fb ff ff 	mov    -0x410(%rbp),%rax
  400867:	48 39 c2             	cmp    %rax,%rdx
  40086a:	74 05                	je     400871 <main+0xb7>
  40086c:	e8 31 ff ff ff       	callq  4007a2 <explode_bomb>
  400871:	b8 00 00 00 00       	mov    $0x0,%eax
  400876:	c9                   	leaveq 
  400877:	c3                   	retq   
  400878:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40087f:	00 

0000000000400880 <__libc_csu_init>:
  400880:	41 57                	push   %r15
  400882:	41 89 ff             	mov    %edi,%r15d
  400885:	41 56                	push   %r14
  400887:	49 89 f6             	mov    %rsi,%r14
  40088a:	41 55                	push   %r13
  40088c:	49 89 d5             	mov    %rdx,%r13
  40088f:	41 54                	push   %r12
  400891:	4c 8d 25 60 05 20 00 	lea    0x200560(%rip),%r12        # 600df8 <__frame_dummy_init_array_entry>
  400898:	55                   	push   %rbp
  400899:	48 8d 2d 60 05 20 00 	lea    0x200560(%rip),%rbp        # 600e00 <__init_array_end>
  4008a0:	53                   	push   %rbx
  4008a1:	4c 29 e5             	sub    %r12,%rbp
  4008a4:	31 db                	xor    %ebx,%ebx
  4008a6:	48 c1 fd 03          	sar    $0x3,%rbp
  4008aa:	48 83 ec 08          	sub    $0x8,%rsp
  4008ae:	e8 3d fd ff ff       	callq  4005f0 <_init>
  4008b3:	48 85 ed             	test   %rbp,%rbp
  4008b6:	74 1e                	je     4008d6 <__libc_csu_init+0x56>
  4008b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4008bf:	00 
  4008c0:	4c 89 ea             	mov    %r13,%rdx
  4008c3:	4c 89 f6             	mov    %r14,%rsi
  4008c6:	44 89 ff             	mov    %r15d,%edi
  4008c9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4008cd:	48 83 c3 01          	add    $0x1,%rbx
  4008d1:	48 39 eb             	cmp    %rbp,%rbx
  4008d4:	75 ea                	jne    4008c0 <__libc_csu_init+0x40>
  4008d6:	48 83 c4 08          	add    $0x8,%rsp
  4008da:	5b                   	pop    %rbx
  4008db:	5d                   	pop    %rbp
  4008dc:	41 5c                	pop    %r12
  4008de:	41 5d                	pop    %r13
  4008e0:	41 5e                	pop    %r14
  4008e2:	41 5f                	pop    %r15
  4008e4:	c3                   	retq   
  4008e5:	90                   	nop
  4008e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4008ed:	00 00 00 

00000000004008f0 <__libc_csu_fini>:
  4008f0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004008f4 <_fini>:
  4008f4:	48 83 ec 08          	sub    $0x8,%rsp
  4008f8:	48 83 c4 08          	add    $0x8,%rsp
  4008fc:	c3                   	retq   
