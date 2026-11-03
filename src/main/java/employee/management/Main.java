
package employee.management;

public class Main {

    public static void main(String[] args) {

        System.out.println("==================================");
        System.out.println(" Employee Management Application");
        System.out.println("==================================");

        System.out.println("Application Version : 1.0.0");package employee.management;

import com.sun.net.httpserver.HttpServer;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.charset.StandardCharsets;

public class Main {

    private static final String APP_VERSION = "1.0.0";
    private static final int PORT = 8080;

    public static void main(String[] args) throws IOException {

        HttpServer server = HttpServer.create(
            new InetSocketAddress(PORT), 0
        );

        server.createContext("/", exchange -> {
            String response =
                "Employee Management Application\n" +
                "Application Version: " + APP_VERSION + "\n" +
                "Status: RUNNING\n";

            byte[] responseBytes =
                response.getBytes(StandardCharsets.UTF_8);

            exchange.getResponseHeaders().set(
                "Content-Type", "text/plain; charset=UTF-8"
            );

            exchange.sendResponseHeaders(200, responseBytes.length);

            try (var output = exchange.getResponseBody()) {
                output.write(responseBytes);
            }
        });

        server.createContext("/version", exchange -> {
            byte[] responseBytes =
                APP_VERSION.getBytes(StandardCharsets.UTF_8);

            exchange.getResponseHeaders().set(
                "Content-Type", "text/plain; charset=UTF-8"
            );

            exchange.sendResponseHeaders(200, responseBytes.length);

            try (var output = exchange.getResponseBody()) {
                output.write(responseBytes);
            }
        });

        server.setExecutor(null);
        server.start();

        System.out.println(
            "Employee Management Application started on port " + PORT
        );
    }
}
        System.out.println("Application Status  : RUNNING");

        System.out.println("==================================");
        System.out.println("Application started successfully!");
    }
}
