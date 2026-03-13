/* pipewire/core.h */
PW_API_REGISTRY_IMPL int pw_registry_add_listener
(struct pw_registry * registry,
 struct spa_hook * listener,
 const struct pw_registry_events * events,
 void *  data);
