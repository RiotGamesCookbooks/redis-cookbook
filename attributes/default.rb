#
# Cookbook Name:: redis
# Attributes:: default
#
# Author:: Jamie Winsor (<jwinsor@riotgames.com>)
# Copyright 2011, Riot Games
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default[:redis][:user]                    = "redis"
default[:redis][:conf_dir]                = "/etc/redis"
default[:redis][:pid_file]                = "/var/run/redis.pid"
default[:redis][:port]                    = 6379
default[:redis][:bind_address]            = "127.0.0.1"
default[:redis][:timeout]                 = 300
default[:redis][:log_level]               = "notice"
default[:redis][:log_file]                = "/var/log/redis/redis.log"
default[:redis][:databases]               = 16
default[:redis][:append_only]             = "no"
default[:redis][:append_fsync]            = "everysec"
default[:redis][:vm_enabled]              = "no"
default[:redis][:vm_swap_file]            = "/tmp/redis.swap"
default[:redis][:vm_max_memory]           = 0
default[:redis][:vm_page_size]            = 32
default[:redis][:vm_pages]                = 134217728
default[:redis][:vm_max_threads]          = 4
default[:redis][:glue_output_buf]         = "yes"
default[:redis][:hash_max_zipmap_entries] = 64
default[:redis][:hash_max_zipmap_value]   = 512
default[:redis][:activerehashing]         = "yes"
default[:redis][:include_paths]           = Array.new
default[:redis][:rdbcompression]          = "yes"
default[:redis][:dbfilename]              = "dump.rdb"
default[:redis][:db_dir]                  = "/var/lib/redis/"
default[:redis][:snapshot_saves]          = [
  { 900 => 1 },
  { 300 => 10 },
  { 60 => 10000 }
]