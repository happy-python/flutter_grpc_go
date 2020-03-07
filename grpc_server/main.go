package main

import (
	"context"
	pb "grpc_server/pb"
	"log"
	"net"

	"github.com/golang/protobuf/ptypes/empty"
	"google.golang.org/grpc"
)

type service struct{}

func (s *service) SayHello(context context.Context, req *empty.Empty) (*pb.HelloResponse, error) {
	log.Println("SayHello")
	return &pb.HelloResponse{
		Response: "hello flutter",
	}, nil
}

func main() {
	path := ":3000"
	listener, err := net.Listen("tcp", path)
	defer listener.Close()
	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}

	log.Printf("Listening on %s", path)
	server := grpc.NewServer()
	pb.RegisterHelloServiceServer(server, &service{})
	server.Serve(listener)
}
