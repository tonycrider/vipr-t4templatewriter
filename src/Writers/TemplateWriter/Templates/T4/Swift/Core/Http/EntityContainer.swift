﻿//  
//
//  Copyright (c) 2014 Microsoft Open Technologies, Inc.
//  All rights reserved.
//


import Foundation


class EntityContainer : BaseClient
{
    //var entityContainer : EntityContainer;
    
    
    override init(url: String, credentials: Credentials) {
        super.init(url: url, credentials: credentials);
        //self.entityContainer = self;
    }
    
    /*func initializeEntityContainer (url : String, credentials : Credentials)-> EntityContainer
    {
    // if (entityContainer == nil){
    //  entityContainer = self;//EntityContainer(url: url, credentials: credentials);
    //[[self alloc] initWithUrl:url credentials:credentials];
    //}
    
    return entityContainer;
    }*/
    
    /*func getEntityContainer () -> EntityContainer{
    return entityContainer;
    }*/
    
    func executeForPath (path : String, method : String , body: NSData,  callback : ((NSData!, NSURLResponse!, NSError!) -> Void)!) -> NSURLSessionDataTask {
        
        
        var url = self.url + path;
        var connection = HttpConnection(credentials: self.credential, url : url, bodyArray : body);
        
        return connection.execute(method, callback : callback);
        
        /*  HttpConnection *connection = [[HttpConnection alloc] initWithCredentials:self.credential
        url:url
        bodyArray:body];
        */
        /* return connection.execute(method, )
        
        [connection execute:method callback:^(NSData  *data, NSURLResponse *reponse, NSError *error) {
        callback(data, reponse,error);
        }];*/
    }
}