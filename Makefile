PROJECT=render
OWNER=alexandrejomin

test:
	python -m unittest discover -v

run:
	python main.py

# -----------------------------------------------------------------
#        Docker targets
# -----------------------------------------------------------------

dockerBuild:
	docker build -t $(OWNER)/$(PROJECT):latest .

dockerClean:
	docker rmi -f $(OWNER)/$(PROJECT):latest

dockerPush:
	docker push $(OWNER)/$(PROJECT):latest
