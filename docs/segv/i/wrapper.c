/* ./ffi/wrapper.c */
#include <pipewire/pipewire.h>
struct pw_registry*
pw_perl_core_get_registry(struct pw_core *core,
			  uint32_t version,
			  size_t user_data_size) {
  return pw_core_get_registry(core,
			      PW_VERSION_REGISTRY,
			      user_data_size);
}
