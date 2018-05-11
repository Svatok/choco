RSpec.describe Admin::SessionsController, type: :controller do
  let(:admin) { create(:user) }

  describe 'GET #show' do
    subject { get :show }

    it 'renders correct view' do
      expect(subject).to render_template(:show)
      expect(response).to be_ok
    end
  end

  describe 'POST #create' do
    context 'correct credentials' do
      subject { post :create, params: { email: admin.email, password: admin.password } }

      it 'redirects to admin dashobard, creates session' do
        expect(subject).to redirect_to admin_header_links_path
        expect(session[:user_id]).to eq admin.id
      end
    end

    context 'wrong credentials' do
      context 'no user' do
        let(:email) { FFaker::Internet.email }
        let(:password) { FFaker::Internet.password }

        subject { post :create, params: { email: email, password: password } }

        it 'redirects to log in page' do
          expect(subject).to redirect_to admin_session_path
        end
      end
    end
  end

  describe 'DELETE #destroy' do
    subject { delete :destroy }

    before { session[:user_id] = admin.id }

    it 'clears the session' do
      expect { subject }.to change { session[:user_id] }.from(admin.id).to(nil)
    end

    it 'redirects to log in' do
      expect(subject).to redirect_to admin_session_path
    end
  end
end
