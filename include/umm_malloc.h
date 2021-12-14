/* ----------------------------------------------------------------------------
 * umm_malloc.h - a memory allocator for embedded systems (microcontrollers)
 *
 * See copyright notice in LICENSE.TXT
 * ----------------------------------------------------------------------------
 */



/* ------------------------------------------------------------------------ */
#define UMM_MALLOC_CFG_HEAP_ADDR (30000000)
#define UMM_MALLOC_CFG_HEAP_SIZE (0x200000)

typedef unsigned int size_t;
typedef unsigned short int uint16_t;
typedef unsigned int uint32_t;
typedef unsigned char uint8_t;
#define DBGLOG_DEBUG printf
#define DBGLOG_TRACE printf
#define NULL 0

extern void  umm_init( void );
extern void *umm_malloc( size_t size );
extern void *umm_calloc( size_t num, size_t size );
extern void *umm_realloc( void *ptr, size_t size );
extern void  umm_free( void *ptr );

/* ------------------------------------------------------------------------ */

