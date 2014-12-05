
#
# Copyright:: 2014, Christopher Roy <chris@moodlerooms.com>
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

require 'chef/handler'
require 'diplomat'

module SimpleReport
  class ConsulRelease < Chef::Handler

    def initialize(host, session, key)
      @host = host
      @session = session
      @key = key
    end

    def report
      Chef::Log.info "Removing Consul lock"

      Diplomat.configure do |config|
        config.url = 'http://' + @host + ':8500'
      end

      Diplomat::Lock.release(@key,@session)
      Diplomat::Session.destroy(@session)
    end
  end
end