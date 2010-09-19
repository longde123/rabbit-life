/**
---------------------------------------------------------------------------

Copyright (c) 2009 Dan Simpson

Auto-Generated @ Wed Aug 26 19:21:29 -0700 2009.  Do not edit this file, extend it you must.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

---------------------------------------------------------------------------
**/


/*
Documentation

  Standard transactions provide so-called "1.5 phase commit".  We can
  ensure that work is never lost, but there is a chance of confirmations
  being lost, so that messages may be resent.  Applications that use
  standard transactions must be able to detect and ignore duplicate
  messages.
 namegrammarcontent
    tx                  = C:SELECT S:SELECT-OK
                        / C:COMMIT S:COMMIT-OK
                        / C:ROLLBACK S:ROLLBACK-OK

*/
package org.ds.amqp.protocol.headers
{
	import flash.utils.ByteArray;
	import flash.utils.Dictionary;
	import org.ds.amqp.datastructures.*;
	import org.ds.amqp.transport.Buffer;
	import org.ds.amqp.protocol.Header;
	
	public dynamic class Tx extends Header
	{


		public function Tx() {
			_classId  = 90;
		}

		public override function writeProperties(buf:Buffer):void {

		}

		public override function readProperties(buf:Buffer):void {

		}
		
		public override function print():void {
			printObj("TxHeader", this);
		}
	}
}