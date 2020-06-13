echo 'LABSOUND Build Started'

(
	
	cd src/LabSound-master
	rm -rf build
	mkdir -p build
	
	(
		cd build
		cmake \
			-CMAKE_LIBRARY_PATH=../.. \
			-DLABSOUND_ASOUND=1 \
			-DBUILD_EXAMPLE=FALSE \
			-DCMAKE_INSTALL_PREFIX=../dist \
			..
		
		cmake --build . --target install --config Release
	)
	
	ls build
	
)

echo 'LABSOUND Build Finished'