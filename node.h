
#ifndef NODE_INCLUDED
#define NODE_INCLUDED

struct node {
    const char *person;
    const char *footwear;
    struct node *left;
    struct node *right;
};


typedef struct node *Tree;

#endif