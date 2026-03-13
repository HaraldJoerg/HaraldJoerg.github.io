/* pipewire/context.h: */
struct pw_context * pw_context_new(struct pw_loop *main_loop,
				   struct pw_properties *props,
				   size_t user_data_size);
