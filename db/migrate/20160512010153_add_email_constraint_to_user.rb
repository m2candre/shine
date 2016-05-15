class AddEmailConstraintToUser < ActiveRecord::Migration

  def up
    execute %{
      Alter Table
        users
      Add Constraint
        email_must_be_company_email
      Check ( email ~* '[A-Za-z0-9._%-]+@example\\.com' )
    }
  end

  def down
    execute %{
      Alter Table
        users
      Drop Constraint
        email_must_be_company_email
    }
  end
end
