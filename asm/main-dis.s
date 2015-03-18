
./a.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000400408 <_init>:
  400408:	48 83 ec 08          	sub    $0x8,%rsp
  40040c:	48 8b 05 e5 0b 20 00 	mov    0x200be5(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  400413:	48 85 c0             	test   %rax,%rax
  400416:	74 05                	je     40041d <_init+0x15>
  400418:	e8 33 00 00 00       	callq  400450 <__gmon_start__@plt>
  40041d:	48 83 c4 08          	add    $0x8,%rsp
  400421:	c3                   	retq   

Disassembly of section .plt:

0000000000400430 <__libc_start_main@plt-0x10>:
  400430:	ff 35 d2 0b 20 00    	pushq  0x200bd2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400436:	ff 25 d4 0b 20 00    	jmpq   *0x200bd4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40043c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400440 <__libc_start_main@plt>:
  400440:	ff 25 d2 0b 20 00    	jmpq   *0x200bd2(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400446:	68 00 00 00 00       	pushq  $0x0
  40044b:	e9 e0 ff ff ff       	jmpq   400430 <_init+0x28>

0000000000400450 <__gmon_start__@plt>:
  400450:	ff 25 ca 0b 20 00    	jmpq   *0x200bca(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400456:	68 01 00 00 00       	pushq  $0x1
  40045b:	e9 d0 ff ff ff       	jmpq   400430 <_init+0x28>

0000000000400460 <__printf_chk@plt>:
  400460:	ff 25 c2 0b 20 00    	jmpq   *0x200bc2(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400466:	68 02 00 00 00       	pushq  $0x2
  40046b:	e9 c0 ff ff ff       	jmpq   400430 <_init+0x28>

Disassembly of section .text:

0000000000400470 <_start>:
  400470:	31 ed                	xor    %ebp,%ebp
  400472:	49 89 d1             	mov    %rdx,%r9
  400475:	5e                   	pop    %rsi
  400476:	48 89 e2             	mov    %rsp,%rdx
  400479:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40047d:	50                   	push   %rax
  40047e:	54                   	push   %rsp
  40047f:	49 c7 c0 30 06 40 00 	mov    $0x400630,%r8
  400486:	48 c7 c1 c0 05 40 00 	mov    $0x4005c0,%rcx
  40048d:	48 c7 c7 5d 05 40 00 	mov    $0x40055d,%rdi
  400494:	e8 a7 ff ff ff       	callq  400440 <__libc_start_main@plt>
  400499:	f4                   	hlt    
  40049a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004004a0 <deregister_tm_clones>:
  4004a0:	b8 47 10 60 00       	mov    $0x601047,%eax
  4004a5:	55                   	push   %rbp
  4004a6:	48 2d 40 10 60 00    	sub    $0x601040,%rax
  4004ac:	48 83 f8 0e          	cmp    $0xe,%rax
  4004b0:	48 89 e5             	mov    %rsp,%rbp
  4004b3:	77 02                	ja     4004b7 <deregister_tm_clones+0x17>
  4004b5:	5d                   	pop    %rbp
  4004b6:	c3                   	retq   
  4004b7:	b8 00 00 00 00       	mov    $0x0,%eax
  4004bc:	48 85 c0             	test   %rax,%rax
  4004bf:	74 f4                	je     4004b5 <deregister_tm_clones+0x15>
  4004c1:	5d                   	pop    %rbp
  4004c2:	bf 40 10 60 00       	mov    $0x601040,%edi
  4004c7:	ff e0                	jmpq   *%rax
  4004c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004004d0 <register_tm_clones>:
  4004d0:	b8 40 10 60 00       	mov    $0x601040,%eax
  4004d5:	55                   	push   %rbp
  4004d6:	48 2d 40 10 60 00    	sub    $0x601040,%rax
  4004dc:	48 c1 f8 03          	sar    $0x3,%rax
  4004e0:	48 89 e5             	mov    %rsp,%rbp
  4004e3:	48 89 c2             	mov    %rax,%rdx
  4004e6:	48 c1 ea 3f          	shr    $0x3f,%rdx
  4004ea:	48 01 d0             	add    %rdx,%rax
  4004ed:	48 d1 f8             	sar    %rax
  4004f0:	75 02                	jne    4004f4 <register_tm_clones+0x24>
  4004f2:	5d                   	pop    %rbp
  4004f3:	c3                   	retq   
  4004f4:	ba 00 00 00 00       	mov    $0x0,%edx
  4004f9:	48 85 d2             	test   %rdx,%rdx
  4004fc:	74 f4                	je     4004f2 <register_tm_clones+0x22>
  4004fe:	5d                   	pop    %rbp
  4004ff:	48 89 c6             	mov    %rax,%rsi
  400502:	bf 40 10 60 00       	mov    $0x601040,%edi
  400507:	ff e2                	jmpq   *%rdx
  400509:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400510 <__do_global_dtors_aux>:
  400510:	80 3d 29 0b 20 00 00 	cmpb   $0x0,0x200b29(%rip)        # 601040 <__TMC_END__>
  400517:	75 11                	jne    40052a <__do_global_dtors_aux+0x1a>
  400519:	55                   	push   %rbp
  40051a:	48 89 e5             	mov    %rsp,%rbp
  40051d:	e8 7e ff ff ff       	callq  4004a0 <deregister_tm_clones>
  400522:	5d                   	pop    %rbp
  400523:	c6 05 16 0b 20 00 01 	movb   $0x1,0x200b16(%rip)        # 601040 <__TMC_END__>
  40052a:	f3 c3                	repz retq 
  40052c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400530 <frame_dummy>:
  400530:	48 83 3d e8 08 20 00 	cmpq   $0x0,0x2008e8(%rip)        # 600e20 <__JCR_END__>
  400537:	00 
  400538:	74 1e                	je     400558 <frame_dummy+0x28>
  40053a:	b8 00 00 00 00       	mov    $0x0,%eax
  40053f:	48 85 c0             	test   %rax,%rax
  400542:	74 14                	je     400558 <frame_dummy+0x28>
  400544:	55                   	push   %rbp
  400545:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  40054a:	48 89 e5             	mov    %rsp,%rbp
  40054d:	ff d0                	callq  *%rax
  40054f:	5d                   	pop    %rbp
  400550:	e9 7b ff ff ff       	jmpq   4004d0 <register_tm_clones>
  400555:	0f 1f 00             	nopl   (%rax)
  400558:	e9 73 ff ff ff       	jmpq   4004d0 <register_tm_clones>

000000000040055d <main>:
  40055d:	48 83 ec 18          	sub    $0x18,%rsp
  400561:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  400566:	be 03 00 00 00       	mov    $0x3,%esi
  40056b:	bf 02 00 00 00       	mov    $0x2,%edi
  400570:	b8 00 00 00 00       	mov    $0x0,%eax
  400575:	e8 2b 00 00 00       	callq  4005a5 <multstore>
  40057a:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  40057f:	be 44 06 40 00       	mov    $0x400644,%esi
  400584:	bf 01 00 00 00       	mov    $0x1,%edi
  400589:	b8 00 00 00 00       	mov    $0x0,%eax
  40058e:	e8 cd fe ff ff       	callq  400460 <__printf_chk@plt>
  400593:	b8 00 00 00 00       	mov    $0x0,%eax
  400598:	48 83 c4 18          	add    $0x18,%rsp
  40059c:	c3                   	retq   

000000000040059d <mult2>:
  40059d:	48 89 f8             	mov    %rdi,%rax
  4005a0:	48 0f af c6          	imul   %rsi,%rax
  4005a4:	c3                   	retq   

00000000004005a5 <multstore>:
  4005a5:	53                   	push   %rbx
  4005a6:	48 89 d3             	mov    %rdx,%rbx
  4005a9:	e8 ef ff ff ff       	callq  40059d <mult2>
  4005ae:	48 89 03             	mov    %rax,(%rbx)
  4005b1:	5b                   	pop    %rbx
  4005b2:	c3                   	retq   
  4005b3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005ba:	00 00 00 
  4005bd:	0f 1f 00             	nopl   (%rax)

00000000004005c0 <__libc_csu_init>:
  4005c0:	41 57                	push   %r15
  4005c2:	41 89 ff             	mov    %edi,%r15d
  4005c5:	41 56                	push   %r14
  4005c7:	49 89 f6             	mov    %rsi,%r14
  4005ca:	41 55                	push   %r13
  4005cc:	49 89 d5             	mov    %rdx,%r13
  4005cf:	41 54                	push   %r12
  4005d1:	4c 8d 25 38 08 20 00 	lea    0x200838(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  4005d8:	55                   	push   %rbp
  4005d9:	48 8d 2d 38 08 20 00 	lea    0x200838(%rip),%rbp        # 600e18 <__init_array_end>
  4005e0:	53                   	push   %rbx
  4005e1:	4c 29 e5             	sub    %r12,%rbp
  4005e4:	31 db                	xor    %ebx,%ebx
  4005e6:	48 c1 fd 03          	sar    $0x3,%rbp
  4005ea:	48 83 ec 08          	sub    $0x8,%rsp
  4005ee:	e8 15 fe ff ff       	callq  400408 <_init>
  4005f3:	48 85 ed             	test   %rbp,%rbp
  4005f6:	74 1e                	je     400616 <__libc_csu_init+0x56>
  4005f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4005ff:	00 
  400600:	4c 89 ea             	mov    %r13,%rdx
  400603:	4c 89 f6             	mov    %r14,%rsi
  400606:	44 89 ff             	mov    %r15d,%edi
  400609:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40060d:	48 83 c3 01          	add    $0x1,%rbx
  400611:	48 39 eb             	cmp    %rbp,%rbx
  400614:	75 ea                	jne    400600 <__libc_csu_init+0x40>
  400616:	48 83 c4 08          	add    $0x8,%rsp
  40061a:	5b                   	pop    %rbx
  40061b:	5d                   	pop    %rbp
  40061c:	41 5c                	pop    %r12
  40061e:	41 5d                	pop    %r13
  400620:	41 5e                	pop    %r14
  400622:	41 5f                	pop    %r15
  400624:	c3                   	retq   
  400625:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40062c:	00 00 00 00 

0000000000400630 <__libc_csu_fini>:
  400630:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400634 <_fini>:
  400634:	48 83 ec 08          	sub    $0x8,%rsp
  400638:	48 83 c4 08          	add    $0x8,%rsp
  40063c:	c3                   	retq   
