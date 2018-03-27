FROM ruby

ENV GEM_HOME /gem
RUN mkdir $GEM_HOME
WORKDIR $GEM_HOME

ADD Gemfile* $GEM_HOME/
ADD *.gemspec $GEM_HOME/
ADD lib/#MY_GEM_NAME#/version.rb $GEM_HOME/lib/#MY_GEM_NAME#/version.rb
RUN bundle install -j 4

ADD . $GEM_HOME
