#include<stdio.h>
#include<stdint.h>
#include<limits.h> 
#define EINVAL 22

#define VFIO_IRQ_SET_DATA_NONE		(1 << 0) /* Data not present */
#define VFIO_IRQ_SET_DATA_BOOL		(1 << 1) /* Data is bool (u8) */
#define VFIO_IRQ_SET_DATA_EVENTFD	(1 << 2) /* Data is eventfd (s32) */
#define VFIO_IRQ_SET_ACTION_MASK	(1 << 3) /* Mask interrupt */
#define VFIO_IRQ_SET_ACTION_UNMASK	(1 << 4) /* Unmask interrupt */
#define VFIO_IRQ_SET_ACTION_TRIGGER	(1 << 5) /* Trigger interrupt */

#define VFIO_IRQ_SET_DATA_TYPE_MASK	(VFIO_IRQ_SET_DATA_NONE | \
					 VFIO_IRQ_SET_DATA_BOOL | \
					 VFIO_IRQ_SET_DATA_EVENTFD)
#define VFIO_IRQ_SET_ACTION_TYPE_MASK	(VFIO_IRQ_SET_ACTION_MASK | \
					 VFIO_IRQ_SET_ACTION_UNMASK | \
					 VFIO_IRQ_SET_ACTION_TRIGGER)

#define VFIO_PCI_NUM_IRQS 6
 #define __u32 unsigned int

static int vfio_pci_ioctl(__u32 start,__u32 count, __u32 flags,__u32 argsz){
		// struct vfio_irq_set hdr;
		size_t size;
		int max, ret = 0;

		unsigned long minsz = 50; // random concrete value is set
		if (argsz < minsz || count >= (UINT32_MAX - start) ||
		    flags & ~(VFIO_IRQ_SET_DATA_TYPE_MASK |
				  VFIO_IRQ_SET_ACTION_TYPE_MASK))
			return -EINVAL;

		max = 50; // random concrete value is set
		if (start >= max || start + count > max)
			return -EINVAL;

		switch (flags & VFIO_IRQ_SET_DATA_TYPE_MASK) {
		case VFIO_IRQ_SET_DATA_NONE:
			size = 0;
			break;
		case VFIO_IRQ_SET_DATA_BOOL:
			size = sizeof(uint8_t);
			break;
		case VFIO_IRQ_SET_DATA_EVENTFD:
			size = sizeof(int32_t);
			break;
		default:
			return -EINVAL;
		}

		if (size) {
			if (argsz - minsz < count * size)
				return -EINVAL;
        }
        return 0;
}

int main(){
 return 0;
} 