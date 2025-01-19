# Tomcat의 공식 이미지를 기반으로 합니다.
FROM tomcat:9.0


# 애플리케이션 WAR 파일을 Tomcat의 웹apps 디렉토리에 복사합니다.
COPY target/CoupangSpring.war /usr/local/tomcat/webapps/ROOT.war

# Tomcat이 사용할 포트를 노출합니다.
EXPOSE 8080

CMD ["catalina.sh", "run"]
