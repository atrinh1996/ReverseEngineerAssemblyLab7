/**
simple 3 node linked list (technically a tree)
 */
#include <stdio.h>
#include <stddef.h>
#include <listnode.h>

/* Global nodes -- put in initialized data section */

static struct node third = {
    9, 10, 11, 12,
    NULL
};

static struct node second = {
    5, 6, 7, 8,
    &third
};

static struct node first = {
    1, 2, 3, 4,
    &second
};

/* test function */
int countNodes(Tree curr);

int main() {
    printf("Nodes in list is: %d\n", countNodes(&first));
    return 0;
}

/**
 recursively count the nodes of the tree.
*/
int countNodes(Tree curr)
{
    if (curr == NULL) return 0;

    return 1 + countNodes(curr->next);
}