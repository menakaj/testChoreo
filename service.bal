import ballerina/http;
import ballerina/io;
import ballerina/os;

string x = getString();

function getString() returns string {
    io:println(os:getEnv("SERVICE_URL"));
        io:println(os:getEnv("CLIENT_ID"));
        io:println(os:getEnv("CLIENT_SECRET"));
return "ss";
}

service / on new http:Listener(9090) {
    resource function get hello() returns http:Response {
        
        http:Response res = new;
        res.setTextPayload("Hello, World!");
        return res;
    }
}
