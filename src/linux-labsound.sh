echo 'LABSOUND Build Started'

(
	
	cd src/LabSound-master
	rm -rf build
	mkdir -p build
	
	(
		cd build
		
		export CMAKE_LIBRARY_PATH="/home/travis/build/node-3d/deps-labsound-raub/src"
		export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/travis/build/node-3d/deps-labsound-raub/src
		echo $LD_LIBRARY_PATH
		echo $CMAKE_LIBRARY_PATH
		
		cmake \
			-DLABSOUND_ASOUND=1 \
			-DCMAKE_INSTALL_PREFIX=../dist \
			-DBUILD_EXAMPLE=FALSE ..
		
		cmake --build . --target install --config Release
	)
	
	ls build
	
)

echo 'LABSOUND Build Finished'
