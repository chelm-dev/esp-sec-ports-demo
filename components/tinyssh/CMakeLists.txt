idf_component_register(SRC_DIRS "." "tinyssh/tinyssh" "tinyssh/crypto"
		EXCLUDE_SRCS "tinyssh/tinyssh/channel_forkpty.c"
		EXCLUDE_SRCS "tinyssh/tinyssh/channel_fork.c"
		EXCLUDE_SRCS "tinyssh/tinyssh/channel.c"
                INCLUDE_DIRS "." "tinyssh/tinyssh" "tinyssh/crypto" "tinyssh/build/include"
		REQUIRES libsodium
		)
set_source_files_properties(tinyssh/tinyssh/main_tinysshd.c
    PROPERTIES COMPILE_FLAGS
    -Wno-unused-but-set-parameter
)
