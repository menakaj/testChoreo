import ballerina/http;
service / on new http:Listener(9090) {
    resource function get hello() returns http:Response {
        http:Response res = new;
        res.setTextPayload("Hello, World!");
        return res;
    }
}