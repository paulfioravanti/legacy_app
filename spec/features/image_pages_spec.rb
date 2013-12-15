require 'spec_helper'

describe "Images on UI" do

  subject { page }

  describe "#create" do
    before { visit new_image_path }

    context "with invalid information" do
      let(:click_save_button) { click_button 'Save Image' }

      describe "appearance" do
        before { click_save_button }
        it { should have_alert_message('error', /Unable to save/) }
      end

      describe "result" do
        subject { -> { click_save_button } }
        it { should_not change(Image, :count) }
      end
    end
  end

  describe "#destroy" do
    let(:click_delete_link) { click_link "Delete" }

    before do
      Image.make!
      visit images_path
    end

    describe "appearance" do
      before { click_delete_link }
      specify do
        should have_selector("div.flash.alert.alert-success", "Image deleted")
      end
    end
  end

  describe "#update" do
    let(:image) { Image.make! }

    before { visit edit_image_path(image) }

    context "with invalid information" do
      before do
        Image.stub(:find).and_return(image)
        image.should_receive(:update_attributes).
          with("caption" => image.caption).and_return(false)
      end

      describe "appearance" do
        before { click_button 'Save Image' }
        it { should have_alert_message('error', "Unable to update image") }
      end
    end
  end
end