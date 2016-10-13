/*****************************************************************************
 * 3.cpp
 *****************************************************************************/

#include <sys/platform.h>
#include "adi_initialize.h"
#include "3.h"
#include "stdio.h"
#include <cycle_count.h>
#include <vector>


/** 
 * If you want to use command program arguments, then place them in the following string. 
 */
char __argv_string[] = "";

std::vector<float> ret_vec_by_values(std::vector<float> vector) {
    std::vector<float> doubled(vector.size());
    for(int i = 0; i < vector.size(); i++) {
        doubled[i] = vector[i] * 2;
    }
    return doubled;
}

void ret_arr (float * array, int size, float * doubledArr) {
	for(int i = 0; i < size; i++) {
		doubledArr[i] = array[i] * 2;
	}
}

std::vector<float> ret_vec_by_ref_and_value(const std::vector<float> &vector) {
    std::vector<float> doubled(vector.size());
    for(int i = 0; i < vector.size(); i++) {
        doubled[i] = vector[i] * 2;
    }
    return doubled;
}

void ret_vec_by_references(std::vector<float> &vector, std::vector<float> &doubled) {
    for(int i = 0; i < vector.size(); i++) {
        doubled[i] = vector[i] * 2;
    }
}

int main(int argc, char *argv[])
{
	/**
	 * Initialize managed drivers and/or services that have been added to 
	 * the project.
	 * @return zero on success 
	 */
	adi_initComponents();

	const int size = 300;

    float a[size];
    float b[size];
	std::vector<float> aa(size);
	std::vector<float> bb(size);
	for(int i = 0; i < size; i++) {
	    aa[i] = (float)i;
	    a[i] = (float)i;
	}

	cycle_t start_count = 0;
	cycle_t final_count = 0;

	START_CYCLE_COUNT(start_count);
	//ret_arr(a, size, b);
	//ret_vec_by_references(aa, bb);
	//bb = ret_vec_by_ref_and_value(aa);
	bb = ret_vec_by_values(aa);
	STOP_CYCLE_COUNT(final_count,start_count);
	PRINT_CYCLES("Number of cycles: ",final_count);

	/* Begin adding your custom code here */
	//for(int i = 0; i < size; i++) {
	//	printf("%f \n", b[i]);
	//}

	return 0;
}

/** Результаты выполнения функциий
+----------------------------------------------------------------------+
|                     Without compiler optimization                    |
+----------------------------------------------------------------------+
|   Number of  |                      Cycle count                      |
|   elements   |                                                       |
+--------------+-------------------------------------------------------+
| Size of data | by_values | by_ref_and_value | by_references |  array |
+--------------+-----------+------------------+---------------+--------+
|      30      |    8828   |       4510       |      3250     |  1974  |
+--------------+-----------+------------------+---------------+--------+
|      300     |   75548   |       37849      |     32410     |  19497 |
+--------------+-----------+------------------+---------------+--------+
|     3000     |     _     |         _        |     324010    | 194972 |
+--------------+-----------+------------------+---------------+--------+
|                      With compiler optimization                      |
+----------------------------------------------------------------------+
|   Number of  |                      Cycle count                      |
|   elements   |                                                       |
+--------------+-------------------------------------------------------+
| Size of data | by_values | by_ref_and_value | by_references |  array |
+--------------+-----------+------------------+---------------+--------+
|      30      |    2427   |       1923       |      1555     |  1538  |
+--------------+-----------+------------------+---------------+--------+
|      300     |   19737   |       16632      |     15595     |  15578 |
+--------------+-----------+------------------+---------------+--------+
|     3000     |     _     |         _        |     155995    | 155980 |
+--------------+-----------+------------------+---------------+--------+
**/
