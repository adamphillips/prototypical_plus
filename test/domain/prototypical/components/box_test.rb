require 'test_helper'

module Prototypical; module Components
  class BoxTest < ActiveSupport::TestCase
    let(:box) { Box.new(options) }

    let(:options) { {} }

    describe '#render_settings' do
      let (:render_settings) { box.render_settings }

      describe '#style' do
        subject { render_settings[:locals][:style] }

        it 'should produce a css friendly string representation' do
          assert_match /padding: 12px/, subject.to_s
        end

        it 'should contain the default styles' do
          assert_equal '12px', subject[:padding]
        end

        it 'should allow adding styles' do
          options[:style] = {
            background_color: '#c0c0c0'
          }

          assert_equal '#c0c0c0', subject[:background_color]
        end

        it 'should allow overwriting styles' do
          options[:style] = {
            padding: '18px'
          }

          assert_equal '18px', subject[:padding]
        end
      end
    end
  end
end; end