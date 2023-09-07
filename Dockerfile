FROM sdavtaker/cadmium:latest

COPY CMakeLists.txt /project/CMakeLists.txt
COPY src /project/src

VOLUME ["/build"]

WORKDIR /build

RUN cmake ../project

RUN cmake --build .

CMD ["cmake", "--build", ".",  "--target", "run_simulation" ]
