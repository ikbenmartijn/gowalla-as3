This project brings the Gowalla API to Flex/Flash developers. (**Currently this library can only be used in AIR-applications since Gowalla doesn't have a crossdomain.xml file.**)

# How to use #
## Include this project ##
  1. Check-out this project using SVN into Flash Builder, you can also download the SWC file if you're not sure how to use SVN or feel uncomfortable with it.
  1. Link the library to the project you want to integrate Gowalla with. If you've downloaded the SWC-file you can add the SWC in the project's build path.
## Create the Gowalla instance ##
Add the following lines of code to your project.
```
import com.ikbenmartijn.gowalla.GowallaService;
import com.ikbenmartijn.gowalla.GowallaOperation;

var service:GowallaService = new GowallaService();
```
## Create the operation for the API call ##
```
var operation:GowallaOperation = service.FUNCTION_YOU_WANT_TO_USE();

operation.addEventListener(Event.COMPLETE, handleComplete);
operation.addEventListener(ErrorEvent.ERROR, handleError);

operation.StartGowalla();
```
## Handle the results ##
```
private function handleComplete(event:Event):void
{
    var GowallaData:Object = event.target.data;
}
            
private function handleError(event:ErrorEvent):void
{
    Alert.show(event.text);
}
```
# Special thanks #
Special thanks to Tim Walling for the inspiration on this project.