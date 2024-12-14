function handleComplete(event:Event):void {
  var loader:Loader = event.target as Loader;
  if (loader && loader.content) {
    var loadedImage:DisplayObject = loader.content as DisplayObject;
    if (loadedImage) {
      addChild(loadedImage);
    } else {
      trace("Loaded content is not a DisplayObject.");
    }
  } else {
    trace("Loading failed or content is null.");
  }
}

//Example usage:
var loader:Loader = new Loader();
loader.contentLoaderInfo.addEventListener(Event.COMPLETE, handleComplete);
loader.load(new URLRequest("path/to/image.jpg"));