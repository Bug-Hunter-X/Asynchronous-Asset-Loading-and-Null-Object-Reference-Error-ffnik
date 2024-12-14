function handleComplete(event:Event):void {
  // Assuming 'event.target' is a Loader object
  var loadedImage:DisplayObject = event.target.content;

  // This will throw an error if the loaded content is not a DisplayObject
  addChild(loadedImage);
}