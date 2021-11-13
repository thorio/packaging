DIRS=$(sort $(wildcard */))

.PHONY: all
all: $(addsuffix .deb, $(DIRS))

%.deb:
	dpkg-deb --build --root-owner-group $*

.PHONY: clean
clean:
	$(RM) *.deb
