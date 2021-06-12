idf_component_register(SRC_DIRS "." "freeradius-client/lib"
	#EXCLUDE_SRCS "freeradius-client/lib/util.c"
                INCLUDE_DIRS "."
		    		 "freeradius-client/lib"
		    	         "freeradius-client/include"
		)

set_source_files_properties(freeradius-client/lib/dict.c
    PROPERTIES COMPILE_FLAGS
    -Wno-format-truncation
)

set_source_files_properties(freeradius-client/lib/sendserver.c
    PROPERTIES COMPILE_FLAGS
    -Wno-unused-label
)
