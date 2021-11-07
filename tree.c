/**
simple 3 node bst / simple 3 node linked list (technically a tree)
 */
#include <stdio.h>
#include <stddef.h>
#include <node.h>

/* Global nodes -- put in initialized data section */

// right leaf
static struct node rt = { 
    "Townsend", 
    "Saucony", 
    NULL, 
    NULL 
};

// left leaf
static struct node lt = {
    "Ramsey",
    "Birkenstock",
    NULL,
    NULL
};

// root
static struct node ms = {
    "Sheldon",
    "Freeds",
    &lt,
    &rt
};


/* test function */
int countNodes(Tree curr);

int main() {
    printf("Nodes in tree is: %d\n", countNodes(&ms));
    return 0;
}

/**
 recursively count the nodes of the tree.
*/
int countNodes(Tree curr)
{
    if (curr == NULL) return 0;

    return 1 + countNodes(curr->left) + countNodes(curr->right);
}