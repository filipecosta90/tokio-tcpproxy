CARGO = cargo

.PHONY: all bench build check clean doc install publish run test update

all: build

bench:
	@$(CARGO) bench

build:
	@env TERM=xterm-256color $(CARGO) build --color=always 2>&1

build-release:
	@env TERM=xterm-256color $(CARGO) build --release --color=always 2>&1

check: build test

clean:
	@$(CARGO) clean

doc:
	@$(CARGO) doc

install:
	@$(CARGO) install

publish:
	@$(CARGO) publish

run: build-release
	@$(CARGO) run

test:
	@$(CARGO) test

update:
	@$(CARGO) update
