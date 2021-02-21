########도커 파일의 기본 구조###############
# # 베이스 이미지 명시 (이름 : 버전 방식)
# FROM baseImage
# # 추가적으로 필요한 파일 다운로드
# RUN command
# # 컨테이너 시작시 실행될 명령어를 명시
# CMD ["executable"]
##########################

##### hello를 출력하는 간단한 도커 파일#########
# FROM alpine
# CMD ["echo", "hello"]
############################################



############################
# FROM python:3.7

# WORKDIR /usr/src/app

# COPY ./* /usr/src/app

# RUN pip install -r requirements.txt

# CMD ["echo", "Ready for Python(3.7) Pandas"]

#######################
FROM python:3.7

WORKDIR /usr/src/app

COPY ./requirements.txt /usr/src/app

RUN pip install -r requirements.txt

COPY ./* /usr/src/app

CMD ["echo", "Ready for Python(3.7)"]
