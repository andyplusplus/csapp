void remdiv(long x, long y, long *gp, long *rp){
        long q = x/y;
        long r = x%y;
        *gp = q;
        *rp = r;
}

/*
x-->%rdi, y-->%rsi, gp-->%rdx, rp-->%rcx

remdiv:
    movq %rdi, %rax
    movq %rdx, %r8      %rdx is needed for sign extension
    cqto
    idivq %r8
    movq %rdx (%r8)
    movq %rax (%rcx)
    ret
 */

void uremdiv(unsigned long x, unsigned long y,
             unsigned long *gp, unsigned long *rp){
        unsigned long q = x/y;
        unsigned long r = x%y;
        *gp = q;
        *rp = r;
}

/*
x-->%rdi, y-->%rsi, gp-->%rdx, rp-->%rcx

remdiv:
    movq %rdi, %rax
    movq %rdx, %r8      %rdx is needed for sign extension
    movq $0, $rdx
    idivq %r8
    movq %rdx (%r8)
    movq %rax (%rcx)
    ret
*/

void main(){
}
