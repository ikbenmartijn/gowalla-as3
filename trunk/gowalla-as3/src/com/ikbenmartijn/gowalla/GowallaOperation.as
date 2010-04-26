package com.ikbenmartijn.gowalla
{
	import com.adobe.serialization.json.JSON;
	
	import flash.events.ErrorEvent;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.net.URLRequestHeader;
	import flash.net.URLRequestMethod;

	public class GowallaOperation extends EventDispatcher
	{
		private var _data:Object;
		private var _loader:URLLoader;
		
		public var url:String; //URL of the request
		
		public function get data():*
		{
			return _data;
		}
		
		public function GowallaOperation(url:String)
		{
			this.url = url;
		}
		
		public function StartGowalla():void //Initiates the operation.
		{	
			var request:URLRequest = new URLRequest(url);
			request.method = URLRequestMethod.GET;
			request.requestHeaders.push(new URLRequestHeader("Accept", "application/json"));
			
			_loader = new URLLoader();
			_loader.addEventListener(Event.COMPLETE, handleLoaderComplete);
			_loader.addEventListener(IOErrorEvent.IO_ERROR, handleLoaderError);
			_loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, handleLoaderError);
			
			_loader.load(request);
		}
		
		private function handleLoaderError(event:ErrorEvent):void
		{
			removeLoaderEventListeners();
			handleError(new ErrorEvent(ErrorEvent.ERROR, false, false, event.text));
		}
		
		private function handleLoaderComplete(event:Event):void
		{
			_data = JSON.decode(_loader.data);
			removeLoaderEventListeners();
			handleComplete(event);
		}
		
		private function removeLoaderEventListeners():void
		{
			_loader.removeEventListener(Event.COMPLETE, handleLoaderComplete);
			_loader.removeEventListener(IOErrorEvent.IO_ERROR, handleLoaderError);
			_loader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR, handleLoaderError);
		}

		protected function handleError(event:Event):void
		{
			if (event is ErrorEvent)
			{
				dispatchEvent(event);
			}
			else
			{
				dispatchEvent(new ErrorEvent(ErrorEvent.ERROR));
			}
		}

		protected function handleComplete(event:Event):void
		{
			dispatchEvent(new Event(Event.COMPLETE));
		}
	}
}