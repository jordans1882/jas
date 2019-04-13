build: attrib
	R CMD build .

attrib:
	R -e 'Rcpp::compileAttributes()'

install:
	R CMD INSTALL --build .

doc:
	R CMD Rd2pdf -o JAS.pdf .

test:
	R -e 'devtools::test()'

check:
	R CMD check --as-cran $(TGZ)

.PHONY: veryclean clean

# clean up the "important" files generated by other targets
veryclean: clean
	rm -f src/jas.so
	rm -f jas*.tar.gz
	rm -f jas.pdf
	rm -rf jas.Rcheck

clean:
	find . -name '*.o' -exec rm {} \;
	rm -f src/RcppExports.cpp R/RcppExports.R
