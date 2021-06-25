PLANS := lynn

$(PLANS):
	pnpm run build -- ttf-unhinted::$@
	fc-cache -fv ~/.local/share/fonts/Iosevka-$@

.PHONY: $(PLANS)
