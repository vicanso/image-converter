.PHONY: default

lint:
	cargo clippy 
fmt:
	cargo fmt --all --
dev:
	cargo run
release:
	cargo build --release

udeps:
	cargo +nightly udeps

# 如果要使用需注释 profile.release 中的 strip
bloat:
	cargo bloat --release --crates