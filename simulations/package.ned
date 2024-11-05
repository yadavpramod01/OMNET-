package exam.simulations;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.inet.StandardHost;


@license(LGPL);
//
// TODO documentation
//
network Network
{
    @display("bgb=807,478");
    submodules:
        server: StandardHost {
            @display("p=131,310");
        }
        client1: StandardHost {
            @display("p=583,190");
        }
        client2: StandardHost {
            @display("p=583,265");
        }
        client3: StandardHost {
            @display("p=583,341");
        }
        client4: StandardHost {
            @display("p=583,411");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=379,65");
        }
    connections:
        server.ethg++ <--> Eth100M <--> client1.ethg++;
        server.ethg++ <--> Eth100M <--> client2.ethg++;
        server.ethg++ <--> Eth100M <--> client3.ethg++;
        server.ethg++ <--> Eth100M <--> client4.ethg++;
}

