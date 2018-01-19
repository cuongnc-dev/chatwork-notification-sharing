namespace :chatwork do
  task notification_sharing: :environment do
    body = ""
    ChatWork::Member.get(room_id: "82609714").each do |member|
      body += "[To:#{member["account_id"]}]"
    end
    body += "\nChiều nay lúc 4h mọi người nhớ vào tham gia buổi sharing nhé, chi tiết về buổi sharing mọi người vui lòng xem ở link Agenda"
    ChatWork::Message.create room_id: "82609714", body: body
  end
 end
