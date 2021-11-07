
/**
 * ths struct has no padding. 
  
     0   4   8   12  16      24
     |   |   |   |   |       |
       1   2   3   4    next

    for for something like "at current addres, dereference, + 16 (0x10)"
    will get you to address 16 (above), the start of the
    next value (an address)

    This struct makes reading the assembly easier because
    and address value is 8 bytes, and the blow struct has
    8 bytes (1 int + 4byte padding) between start of struct and 
    start of next pointer. This struct ahs 16 bytes between start
    of struct and start of next pointer, so we can distinguish
    when a pointer vs a dereferenced pointer is being handled on 
    these two lines of countNode in list.s

    400612:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    400616:	48 8b 40 10          	mov    0x10(%rax),%rax

    vs the other struct
    
    400612:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    400616:	48 8b 40 10          	mov     0x8(%rax),%rax

 */
struct node {
    int elem1, elem2, elem3, elem4;
    struct node *next;
}; // size of 24


/**
 * ths struct has padding. 
  
     0   4   8       16
     |   |   |       |
       1  xxx   next
    
    for for something like "at current addres, dereference, + 8 (0x8)"
    will get you to address 8 (above), the start of the next value (an address)
 */
// struct node {
//     int elem1;
//     struct node *next;
// }; 
// size of 16

typedef struct node *Tree;
