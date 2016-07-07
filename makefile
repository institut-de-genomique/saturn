all : estimate_duplicatedReads

estimate_duplicatedReads : libfastx_comp
	cd estimate_duplicatedReads; $(MAKE) ;
	
libfastx_comp :
	cd libfastx; $(MAKE) ;
	
install :
	cd estimate_duplicatedReads; $(MAKE) install ;

clean :
	cd estimate_duplicatedReads; $(MAKE) clean ;
	cd libfastx; $(MAKE) clean ;
