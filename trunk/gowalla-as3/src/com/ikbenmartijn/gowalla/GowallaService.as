package com.ikbenmartijn.gowalla
{
	import flash.net.URLRequestMethod;
	
	public class GowallaService
	{
		protected var base_url:String = "http://api.gowalla.com/";
		
		/*
		Spot functions
		*/
		public function SpotInfo(spotID:String):GowallaOperation
		{
			var operation:GowallaOperation = new GowallaOperation(base_url + "spots/" + spotID);
			return operation;
		}
		
		public function SpotPhotos(spotID:String):GowallaOperation
		{
			var operation:GowallaOperation = new GowallaOperation(base_url + "spots/" + spotID + "/photos");
			return operation;
		}
		
		public function SpotEvents(spotID:String):GowallaOperation
		{
			var operation:GowallaOperation = new GowallaOperation(base_url + "spots/" + spotID + "/events");
			return operation;
		}
		
		public function SpotItems(spotID:String):GowallaOperation
		{
			var operation:GowallaOperation = new GowallaOperation(base_url + "spots/" + spotID + "/items");
			return operation;
		}
		
		/*
		User functions
		*/
		public function UserActivity(username:String):GowallaOperation
		{
			var operation:GowallaOperation = new GowallaOperation(base_url + "users/" + username + "/events");
			return operation;
		}
		
		public function UserFriends(username:String):GowallaOperation
		{
			var operation:GowallaOperation = new GowallaOperation(base_url + "users/" + username + "/friends");
			return operation;
		}
		
		public function UserInfo(username:String):GowallaOperation
		{
			var operation:GowallaOperation = new GowallaOperation(base_url + "users/" + username);
			return operation;
		}
		
		public function UserItems(username:String):GowallaOperation
		{
			var operation:GowallaOperation = new GowallaOperation(base_url + "users/" + username + "/items");
			return operation;
		}
		
		public function UserPhotos(username:String):GowallaOperation
		{
			var operation:GowallaOperation = new GowallaOperation(base_url + "users/" + username + "/photos");
			return operation;
		}
		
		public function UserStamps(username:String):GowallaOperation
		{
			var operation:GowallaOperation = new GowallaOperation(base_url + "users/" + username + "/stamps");
			return operation;
		} //Stamps = Pins
		
		public function UserTopSpots(username:String):GowallaOperation
		{
			var operation:GowallaOperation = new GowallaOperation(base_url + "users/" + username + "/top_spots");
			return operation;
		}
		
		public function UserTrips(username:String):GowallaOperation
		{
			var operation:GowallaOperation = new GowallaOperation(base_url + "users/" + username + "/trips");
			return operation;
		}
		
		/*
		Item functions
		*/
		public function ItemInfo(itemID:String):GowallaOperation
		{
			var operation:GowallaOperation = new GowallaOperation(base_url + "items/" + itemID);
			return operation;
		}	
		
		/*
		Trip functions
		*/
		public function TripInfo(tripID:String):GowallaOperation
		{
			var operation:GowallaOperation = new GowallaOperation(base_url + "trips/" + tripID);
			return operation;
		}
		
		/*
		Category functions
		*/
		public function CategoryInfo(categoryID:String):GowallaOperation
		{
			var operation:GowallaOperation = new GowallaOperation(base_url + "categories/" + categoryID);
			return operation;
		}
	}
}