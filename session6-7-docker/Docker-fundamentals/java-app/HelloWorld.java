import com.sun.net.httpserver.HttpServer;
import com.sun.net.httpserver.HttpHandler;
import com.sun.net.httpserver.HttpExchange;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;

public class HelloWorld {
    public static void main(String[] args) throws IOException {
        // Bind to 0.0.0.0 so it's accessible from outside the container
        HttpServer server = HttpServer.create(new InetSocketAddress("0.0.0.0", 8080), 0);
        
        server.createContext("/", new HttpHandler() {
            @Override
            public void handle(HttpExchange exchange) throws IOException {
                String response = "<!DOCTYPE html>" +
                    "<html><head><title>Hello World - Java</title></head>" +
                    "<body style=\"text-align: center; margin-top: 50px; font-family: sans-serif;\">" +
                    "<h1>Hello World from Java + Docker!</h1>" +
                    "</body></html>";
                exchange.getResponseHeaders().set("Content-Type", "text/html; charset=UTF-8");
                exchange.sendResponseHeaders(200, response.getBytes().length);
                OutputStream os = exchange.getResponseBody();
                os.write(response.getBytes());
                os.close();
            }
        });

        server.setExecutor(null);
        server.start();
        System.out.println("Java server running on port 8080...");
    }
}

