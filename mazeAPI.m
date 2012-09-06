classdef mazeAPI
   properties
       hostname = '';
       portNumber = 0;
       socket = 0;
   end
   
   methods
       % Class constructor for mazeAPI.
       function object = mazeAPI(host, port)
           object.hostname = host;
           object.portNumber = port;
       end
       
       % Property setter for hostname.
       function object = set.hostname(object, host)
           % Makes sure hostname is a string before setting.
           assert(ischar(host), 'Error: hostname must be a string.');
           object.hostname = host;
       end
       
       % Property setter fof portNumber.
       function object = set.portNumber(object, port)
           % Makes sure portNumber is an integer before setting.
           assert(isnumeric(port), 'Error: portNumber must be a number.');
           object.portNumber = port;
       end
   end
end