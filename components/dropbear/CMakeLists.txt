	idf_component_register(SRC_DIRS "." "dropbear"

		EXCLUDE_SRCS "dropbear/dbutil.c" "cli-session.c" "dropbear/cli-chansession.c" "dropbear/svr-chansession.c" "dropbear/loginrec.c" "dropbear/sshpty.c" "dropbear/scp.c" "dropbear/compat.c" "dropbear/svr-auth.c"
                INCLUDE_DIRS "." "dropbear" "dropbear/libtomcrypt/src/headers" "dropbear/libtommath"
		)

target_compile_options(${COMPONENT_LIB} PRIVATE -DDROPBEAR_CLIENT -DDROPBEAR_SERVER -Wno-pointer-sign)

add_prebuilt_library(libtomcrypt ${COMPONENT_DIR}/dropbear/libtomcrypt/libtomcrypt.a)
add_prebuilt_library(libtommath ${COMPONENT_DIR}/dropbear/libtommath/libtommath.a)

target_link_libraries(${COMPONENT_LIB} PRIVATE libtomcrypt)
target_link_libraries(${COMPONENT_LIB} PRIVATE libtommath)
