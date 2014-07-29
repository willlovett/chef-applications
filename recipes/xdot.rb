directory "/opt/applications" do
	owner "root"
	group "root"
	mode 00775
	action :create
end

git "/opt/applications/xdot.py" do
	repository "https://github.com/jrfonseca/xdot.py"
	action :sync
end

link "/usr/local/bin/xdot.py" do
	to "/opt/applications/xdot.py/xdot.py"
end
