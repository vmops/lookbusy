FROM debian
ADD ./lookbusy .
CMD ["/lookbusy", "-c", "20-25", "-r", "curve" ]
