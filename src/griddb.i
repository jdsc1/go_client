/*
   Copyright (c) 2017 TOSHIBA Digital Solutions Corporation.

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/

%ignore griddb::Container::getGSContainerPtr;
%ignore griddb::Row;

%include "gstype.i"

%include <std_except.i>

#if defined(SWIGPYTHON)
%include "gstype_python.i"
%module griddb_python_client
#elif defined(SWIGRUBY)
%include "gstype_ruby.i"
%module griddb_ruby_client
#elif defined(SWIGJAVASCRIPT)
%include "gstype_js_v8.i"
%module griddb_js_client
#elif defined(SWIGPHP)
%include "gstype_php.i"
%module griddb_php_client
#elif defined(SWIGGO)
%include "gstype_go.i"
%module griddb_go
#endif

%{
#include "gridstore.h"
#include "GSException.h"
#include "TimeSeriesProperties.h"
#include "ExpirationInfo.h"
#include "ContainerInfo.h"
#include "Row.h"
#include "QueryAnalysisEntry.h"
#include "RowSet.h"
#include "Query.h"
#include "Container.h"
#include "PartitionController.h"
#include "RowKeyPredicate.h"
#include "Store.h"
#include "StoreFactory.h"
#include "TimestampUtils.h"
%}

#if defined(SWIGPYTHON)
%shared_ptr(griddb::Resource)
%shared_ptr(griddb::AggregationResult)
%shared_ptr(griddb::TimeSeriesProperties)
%shared_ptr(griddb::ExpirationInfo)
%shared_ptr(griddb::ContainerInfo)
%shared_ptr(griddb::Row)
%shared_ptr(griddb::QueryAnalysisEntry)
%shared_ptr(griddb::RowSet)
%shared_ptr(griddb::Query)
%shared_ptr(griddb::Container)
%shared_ptr(griddb::StoreFactory)
%shared_ptr(griddb::RowKeyPredicate)
%shared_ptr(griddb::Store)
%shared_ptr(griddb::PartitionController)
#endif

%include "GSException.h"
%include "AggregationResult.h"
%include "TimeSeriesProperties.h"
%include "ExpirationInfo.h"
%include "ContainerInfo.h"
%include "Row.h"
%include "QueryAnalysisEntry.h"
%include "RowSet.h"
%include "Query.h"
%include "Container.h"
%include "PartitionController.h"
%include "RowKeyPredicate.h"
%include "Store.h"
%include "StoreFactory.h"
%include "TimestampUtils.h"
