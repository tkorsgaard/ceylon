import ceylon.net.http.server {
	newServer,
	equals,
	Endpoint,
	Server,
	Request,
	Response
}

import ceylon.net.http {
	get,
	post
}
import ceylon.io {

	SocketAddress
}

"Run the module `io.codexarcana.web`."
shared void server() {
	
	Server server = newServer {
		endpoints = {
			Endpoint {
				path = equals("/");
				acceptMethod = { get };
				void service(Request request, Response response) {
					response.writeString("Thomas is the Champ!");
				}
			},
			Endpoint {
				path = equals("/");
				acceptMethod = { post };
				service = (Request request, Response response) {
					
					String? name = request.parameter("name");
					
					response.writeString("echo: " + (name else ""));
					
				};
			}
		};
	};
	
	SocketAddress s1 = SocketAddress("0.0.0.0", 9990);
	
	server.start(s1);
}