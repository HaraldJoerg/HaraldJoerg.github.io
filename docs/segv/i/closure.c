/* pipewire/core.h */
void(* global) (void *data, uint32_t id, uint32_t permissions,
		const char *type, uint32_t version,
		const struct spa_dict *props);
