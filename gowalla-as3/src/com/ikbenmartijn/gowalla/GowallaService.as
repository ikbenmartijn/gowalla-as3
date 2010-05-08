/*
* Copyright (c) 2010 Martijn Vandenberghe (@ikbenmartijn)
*
* Permission is hereby granted, free of charge, to any person
* obtaining a copy of this software and associated documentation
* files (the "Software"), to deal in the Software without
* restriction, including without limitation the rights to use,
* copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the
* Software is furnished to do so, subject to the following
* conditions:
*
* The above copyright notice and this permission notice shall be
* included in all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
* EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
* OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
* NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
* HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
* FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
* OTHER DEALINGS IN THE SOFTWARE.
*/
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
		
		public function UserItemsCarrying(username:String):GowallaOperation
		{
			var operation:GowallaOperation = new GowallaOperation(base_url + "users/" + username + "/items");
			return operation;
		}
		
		public function UserMissingItems(username:String):GowallaOperation
		{
			var operation:GowallaOperation = new GowallaOperation(base_url + "users/" + username + "/items/missing");
			return operation;
		}
		
		public function UserPhotos(username:String):GowallaOperation
		{
			var operation:GowallaOperation = new GowallaOperation(base_url + "users/" + username + "/photos");
			return operation;
		}
		
		public function UserPins(username:String):GowallaOperation
		{
			var operation:GowallaOperation = new GowallaOperation(base_url + "users/" + username + "/pins");
			return operation;
		}
		
		public function UserStamps(username:String):GowallaOperation
		{
			var operation:GowallaOperation = new GowallaOperation(base_url + "users/" + username + "/stamps");
			return operation;
		}
		
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
		
		public function UserVaultedItems(username:String):GowallaOperation
		{
			var operation:GowallaOperation = new GowallaOperation(base_url + "users/" + username + "/items/vault");
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