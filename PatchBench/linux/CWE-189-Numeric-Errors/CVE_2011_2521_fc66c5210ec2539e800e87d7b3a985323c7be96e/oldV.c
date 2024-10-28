#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define X86_PMC_IDX_FIXED				       32
/*
 * We model BTS tracing as another fixed-mode PMC.
 *
 * We choose a value in the middle of the fixed event range, since lower
 * values are used by actual fixed events and higher values are used
 * to indicate other overflow conditions in the PERF_GLOBAL_STATUS msr.
 */
#define X86_PMC_IDX_FIXED_BTS				(X86_PMC_IDX_FIXED + 16)
/* Instr_Retired.Any: */
#define MSR_ARCH_PERFMON_FIXED_CTR0			0x309

int x86_assign_hw_event_Snippet(int hwc_idx){
    unsigned long hwc_event_base=0;
    if (hwc_idx == X86_PMC_IDX_FIXED_BTS) {
		hwc_event_base	= 0;
	} else if (hwc_idx >= X86_PMC_IDX_FIXED) {
		hwc_event_base = MSR_ARCH_PERFMON_FIXED_CTR0;
	}
    return hwc_event_base;
}
int main(){
 return 0;
} 