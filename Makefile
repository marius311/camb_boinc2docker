default:
	
build:
	docker build -t camb_boinc2docker .
	
squash:
	mkdir -p results
	docker-stfd -v $$(pwd):/root/shared camb_boinc2docker /root/shared/params_squash.ini
